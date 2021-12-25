$(document).ready(function () {

    //Example 2
    $("#filer_input").filer({
        limit: 24,
        maxSize: 5,
        extensions: ["jpg", "jpeg", "png", "gif"],

        changeInput: '<div class="jFiler-input-dragDrop"><div class="jFiler-input-inner"><div class="jFiler-input-icon"><i class="icon-jfi-cloud-up-o"></i></div><div class="jFiler-input-text"><h3>Drag&Drop files here</h3> <span style="display:inline-block; margin: 15px 0">or</span></div><a class="jFiler-input-choose-btn blue">Browse Files</a></div></div>',
        showThumbs: true,
        theme: "dragdropbox",
        templates: {
            box: '<ul class="jFiler-items-list jFiler-items-grid"></ul>',
            item: '<li class="jFiler-item">\
						<div class="jFiler-item-container">\
							<div class="jFiler-item-inner">\
								<div class="jFiler-item-thumb">\
									<div class="jFiler-item-status"></div>\
									<div class="jFiler-item-thumb-overlay">\
										<div class="jFiler-item-info">\
											<div style="display:table-cell;vertical-align: middle;">\
												<span class="jFiler-item-title"><b title="{{fi-name}}">{{fi-name}}</b></span>\
												<span class="jFiler-item-others">{{fi-size2}}</span>\
											</div>\
										</div>\
									</div>\
									{{fi-image}}\
								</div>\
								<div class="jFiler-item-assets jFiler-row">\
									<ul class="list-inline pull-left">\
										<li>{{fi-progressBar}}</li>\
									</ul>\
									<ul class="list-inline pull-right">\
										<li><a class="icon-jfi-trash jFiler-item-trash-action"></a></li>\
									</ul>\
								</div>\
							</div>\
						</div>\
					</li>',
            itemAppend: '<li class="jFiler-item">\
							<div class="jFiler-item-container">\
								<div class="jFiler-item-inner">\
									<div class="jFiler-item-thumb">\
										<div class="jFiler-item-status"></div>\
										<div class="jFiler-item-thumb-overlay">\
											<div class="jFiler-item-info">\
												<div style="display:table-cell;vertical-align: middle;">\
													<span class="jFiler-item-title"><b title="{{fi-name}}">{{fi-name}}</b></span>\
													<span class="jFiler-item-others">{{fi-size2}}</span>\
												</div>\
											</div>\
										</div>\
										{{fi-image}}\
									</div>\
									<div class="jFiler-item-assets jFiler-row">\
										<ul class="list-inline pull-left">\
											<li><span class="jFiler-item-others">{{fi-icon}}</span></li>\
										</ul>\
										<ul class="list-inline pull-right">\
											<li><a class="icon-jfi-trash jFiler-item-trash-action"></a></li>\
										</ul>\
									</div>\
								</div>\
							</div>\
						</li>',
            progressBar: '<div class="bar"></div>',
            itemAppendToEnd: false,
            canvasImage: true,
            removeConfirmation: true,
            _selectors: {
                list: '.jFiler-items-list',
                item: '.jFiler-item',
                progressBar: '.bar',
                remove: '.jFiler-item-trash-action'
            }
        },
        dragDrop: {
            dragEnter: null,
            dragLeave: null,
            drop: null,
            dragContainer: null,
        },
        uploadFile: false,
        files: null,
        addMore: true,
        allowDuplicates: true,
        clipBoardPaste: true,
        excludeName: null,
        beforeRender: null,
        afterRender: null,
        beforeShow: null,
        beforeSelect: null,
        onSelect: null,
        afterShow: null,
        onRemove: function (itemEl, file, id, listEl, boxEl, newInputEl, inputEl) {
            var filerKit = inputEl.prop("jFiler"),
                file_name = filerKit.files_list[id].name;

            //$.post('./php/ajax_remove_file.php', {file: file_name});
        },
        onEmpty: null,
        options: null,
        dialogs: {
            alert: function (text) {
                return alert(text);
            },
            confirm: function (text, callback) {
                confirm(text) ? callback() : null;
            }
        },
        captions: {
            button: "Choose Files",
            feedback: "Choose files To Upload",
            feedback2: "files were chosen",
            drop: "Drop file here to Upload",
            removeConfirmation: "Are you sure you want to remove this file?",
            errors: {
                filesLimit: "Only {{fi-limit}} files are allowed to be uploaded.",
                filesType: "Only Images are allowed to be uploaded.",
                filesSize: "{{fi-name}} is too large! Please upload file up to {{fi-maxSize}} MB.",
                filesSizeAll: "Files you've choosed are too large! Please upload files up to {{fi-maxSize}} MB."
            }
        }
    });


    $('#location').selectize({
        create: true,
        sortField: 'text'
    });
    $('#category').selectize({
        create: false,
        sortField: 'text'
    });

    // mark favorite from list

    $('.mark-favorite').click(function (evt) {
        evt.preventDefault();
        var path = 'http://sooqalibaba.com';
        var listid = $(this).attr("data-link");
        $.ajax({
            method: 'get',
            url: path + '/setfavorite',
            data: {
                id: listid
            }
        }).done(function (data) {
            // console.log($(this));
            // console.log($(this).parent());
            // console.log($(this).parent().find('.mark-favorite'));

            $('#row-' + listid + ' .mark-favorite').hide();
            $('#row-' + listid + ' .unmark-favorite').show();
        });
    });
    $('.unmark-favorite').click(function (evt) {
        evt.preventDefault();
        var path = 'http://sooqalibaba.com';
        var listid = $(this).attr("data-link");
        $.ajax({
            method: 'get',
            url: path + '/unsetfavorite',
            data: {
                id: listid
            }
        }).done(function (data) {
            $('#row-' + listid + ' .unmark-favorite').hide();
            $('#row-' + listid + ' .mark-favorite').show();
        });
    });

    /* Category Combo */

    //updating the vale of combobox after submitting the form
    var main_cat_val = $('#combo-main-cat').val();
    var sub_cat_val = $('#combo-sub-cat').val();

    if ($('#combo-sub-cat').val() == 0) {
        var el = 'li';
        var find_main_cat_vale = $('#combo-box-outer .combo-menu').find(el + "[data-cat='" + main_cat_val + "']");
        var get_text_value = find_main_cat_vale.children('a').attr('data-value');
        $('#combo-box-outer span.combo-span > span').html(get_text_value);
        //console.log(find_main_cat_vale);
    } else {
        var el = 'li';
        var find_main_cat_vale = $('#combo-box-outer .combo-menu').find(el + "[data-cat='" + main_cat_val + "']");
        var find_sub_cat_value = find_main_cat_vale.children('ul').find(el + "[data-cat-sub='" + sub_cat_val + "']");
        var get_text_value = find_sub_cat_value.children('a').attr('data-value');
        $('#combo-box-outer span.combo-span > span').html(get_text_value);
        //console.log(find_sub_cat_value);
    }


    //var get_selected_vale_Mcat = $('#combo-main-cat').attr('data-cat-value');
    //var get_selected_vale_Scat = $('#combo-sub-cat').attr('data-cat-sub-value');
    //$('#combo-box-outer span.combo-span > span').html(get_selected_vale_Mcat);

    //Combo Box Main Menu Toggle

    $('#combo-box-outer span.combo-span').on('click', function () {
        $(this).parent('.combo-outer').children('.combo-menu').toggleClass('active');
        $(this).parent('.combo-outer').toggleClass('in');
        $('#combo-box-outer .has_sub').removeClass('open');
    });

    // Combo box sub menus toggle for non touch devices

    $(".no-touchevents #combo-box-outer .has_sub").hover(
        function () {
            $(this).addClass('open');
        }, function () {
            $(this).removeClass('open');
        }
    );
    //Main Categor selection for non touch devices
    $('.no-touchevents #combo-box-outer:not(.disable-main) .combo-menu > li > a').on('click', function () {
        var get_val = $(this).attr('data-value');
        $('#combo-main-cat').attr('data-cat-value', get_val);
        var get_main_cat_id = $(this).parent().attr('data-cat');
        $('#combo-main-cat').val(get_main_cat_id);
        $('#combo-box-outer span.combo-span > span').html(get_val);
        $(this).closest('.combo-menu').removeClass('active');
        $('#combo-sub-cat').val(0);
        $('#combo-box-outer span.combo-span').parent('.combo-outer').removeClass('in');
    });

    //sub category selection for both touch and non touch devices

    $('#combo-box-outer .has_sub > ul > li > a').on('click', function () {
        $('#combo-box-outer .has_sub').removeClass('open');
        var get_main_cat_id = $(this).parent().parent().parent().attr('data-cat');
        $('#combo-main-cat').val(get_main_cat_id);
        var get_main_cat_val = $(this).parent().parent().parent().children('a').attr('data-value');
        $('#combo-main-cat').attr('data-cat-value', get_main_cat_val);
        var get_val = $(this).attr('data-value');
        $('#combo-sub-cat').attr('data-cat-sub-value', get_val);
        $('#combo-box-outer span.combo-span > span').html(get_val);
        var get_sub_cat_id = $(this).parent().attr('data-cat-sub');
        // need to trigger
        $('#combo-sub-cat').val(get_sub_cat_id).trigger('change');
        $(this).closest('.combo-menu').removeClass('active');
        $('#combo-box-outer span.combo-span').parent('.combo-outer').removeClass('in');
        //console.log(get_val);
    });


    // functionality for double and single tab for touch devices

    // sub categiry toggle on single tab

    var tapped = false;
    $("#combo-box-outer .has_sub > a").on("touchstart", function (e) {
        var current = $(this).parent();
        //console.log(current);
        if (!tapped) {
            tapped = setTimeout(function () {
                $("#combo-box-outer .has_sub").removeClass('open');
                current.addClass('open');

                //console.log(this);
                tapped = null
            }, 300); //wait 300ms
        } else {
            clearTimeout(tapped);
            tapped = null
            //double_tap()
        }
        e.preventDefault();
    });

    //selecting the main caregory by double tabing

    var tapped_a = false;

    $(".touchevents #combo-box-outer:not(.disable-main) .combo-menu > li > a").on("touchstart", function (e) {
        var current = $(this);
        //console.log(current);
        if (!tapped_a) {
            tapped_a = setTimeout(function () {
                //console.log(this);
                tapped_a = null
            }, 300); //wait 300ms
        } else {
            clearTimeout(tapped_a);
            tapped_a = null
            //console.log(current);
            var get_val = $(current).attr('data-value');
            $('#combo-main-cat').attr('data-cat-value', get_val);
            var get_main_cat_id = $(current).parent().attr('data-cat');
            $('#combo-main-cat').val(get_main_cat_id);
            $('#combo-box-outer span.combo-span > span').html(get_val);
            $(current).closest('.combo-menu').removeClass('active');
            $('#combo-sub-cat').val(0);
            $('#combo-box-outer span.combo-span').parent('.combo-outer').removeClass('in');
            //double_tap()
        }
        e.preventDefault();
    });


    $('body').click(function () {
        $('ul.combo-menu').removeClass('active');
        $('#combo-box-outer .has_sub').removeClass('open');
        //console.log('do it');
    });

    $('#combo-box-outer').click(function (e) {
        e.stopPropagation();
    });

    /* END COMOBO BOX 13 FEB 2017 @ 1:00 PM */

});

/* data=comma seperated, selected=selected item, elementid=select id, parentid=parent of select box */
function filler(data, selected, elementid, parentid) {
    if (data == "") {
        $('#' + parentid).html('<input type="text" class="form-control" name="' + elementid + '" value="' + selected + '" />');
    } else {
        var dataarr = data.split(",");
        str = '<select id="' + elementid + '" name="' + elementid + '" class="form-control">';
        $.each(dataarr, function (key, value) {
            value = value.trim();
            if (selected != '' && selected == value) {
                checked = 'selected=""';
            } else {
                checked = '';
            }
            str += '<option value="' + value + '" ' + checked + '>' + value + '</option>';
        });
        str += '</select>';
        $('#' + parentid).html(str);
    }
}