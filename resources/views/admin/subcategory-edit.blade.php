@extends('layouts.admin')

@section('content')
  <div class="main-container">
    <div class="container">
      <div class="row">
        <div class="col-sm-3 page-sidebar">
          @include('partials.admin-nav');
        </div>
        <!--/.page-sidebar-->
        
        <div class="col-sm-9 page-content">
          
          <form role="form" class="form-horizontal" method="post" action="{{ route('admin-subcategory-update') }}">
            
            
            <div class="inner-box">
              <div class="welcome-msg">
                <h3 class="page-sub-header2 clearfix no-padding">Sub Category </h3>
                <span class="page-sub-header-sub small"></span>
              </div>
              
              <div class="form-horizontal">
                <div class="form-group">
                  <label class="col-sm-3 control-label">Sub Category Name</label>
                  
                  <div class="col-sm-9">
                    <input type="text" placeholder="Name" class="form-control" name="sub_category" value="{{ $subcategory->sub_category }}">
                  </div>
                </div>

				  <div class="form-group">
					  <label class="col-sm-3 control-label">Category</label>

					  <div class="col-sm-9">
						  {{ Form::select('category', $category, $subcategory->category_id, ['class' => 'form-control category', 'placeholder' => 'Select...']) }}
					  </div>
				  </div>




                <div class="form-group">
                  <label class="col-sm-3 control-label">Description</label>
                  
                  <div class="col-sm-9">
                    <textarea class="form-control" name="description">{{ $subcategory->description }}</textarea>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label">Sequence</label>
                  
                  <div class="col-sm-9">
                    <input type="text" placeholder="Phone" class="form-control" name="seq"
                           value="{{ $subcategory->seq }}">
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="col-sm-3 control-label">Active</label>
    
                  <div class="col-sm-9">
  
                    {{ Form::checkbox('active', '1', $subcategory->active) }}
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-sm-3 control-label">Filter Title 1</label>

                  <div class="col-sm-9">
                    <input type="text" placeholder="" class="form-control" name="data1"
                           value="{{ $subcategory->data1 }}">


                  </div>
                </div>
				  <div class="form-group">
					  <label class="col-sm-3 control-label">Data 1</label>

					  <div class="col-sm-9">

						  <textarea class="form-control" name="details1">{{$subcategory->details1}}</textarea>
					  </div>
				  </div>

                <div class="form-group">
                  <label class="col-sm-3 control-label">Filter Title 2</label>

                  <div class="col-sm-9">
                    <input type="text" placeholder="" class="form-control" name="data2"
                           value="{{ $subcategory->data2 }}">
                  </div>
                </div>

				  <div class="form-group">
					  <label class="col-sm-3 control-label">Data 2</label>

					  <div class="col-sm-9">

						  <textarea class="form-control" name="details2">{{$subcategory->details2}}</textarea>
					  </div>
				  </div>

                <div class="form-group">
                  <label class="col-sm-3 control-label">Filter Title 3</label>

                  <div class="col-sm-9">
                    <input type="text" placeholder="" class="form-control" name="data3"
                           value="{{ $subcategory->data3 }}">
                  </div>
                </div>

				  <div class="form-group">
					  <label class="col-sm-3 control-label">Data 3</label>

					  <div class="col-sm-9">

						  <textarea class="form-control" name="details3">{{$subcategory->details3}}</textarea>
					  </div>
				  </div>


                <div class="form-group">
                  <label class="col-sm-3 control-label">Filter Title 4</label>

                  <div class="col-sm-9">
                    <input type="text" placeholder="" class="form-control" name="data4"
                           value="{{ $subcategory->data4 }}">
                  </div>
                </div>

				  <div class="form-group">
					  <label class="col-sm-3 control-label">Data 4</label>

					  <div class="col-sm-9">

						  <textarea class="form-control" name="details4">{{$subcategory->details4}}</textarea>
					  </div>
				  </div>


                <div class="form-group">
                  <label class="col-sm-3 control-label">Filter Title 5</label>

                  <div class="col-sm-9">
                    <input type="text" placeholder="" class="form-control" name="data5"
                           value="{{ $subcategory->data5 }}">
                  </div>
                </div>
				  <div class="form-group">
					  <label class="col-sm-3 control-label">Data 5</label>

					  <div class="col-sm-9">

						  <textarea class="form-control" name="details5">{{$subcategory->details5}}</textarea>
					  </div>
				  </div>

                <div class="form-group">
                  <label class="col-sm-3 control-label">Filter Title 6</label>

                  <div class="col-sm-9">
                    <input type="text" placeholder="" class="form-control" name="data6"
                           value="{{ $subcategory->data6 }}">
                  </div>
                </div>
				  <div class="form-group">
					  <label class="col-sm-3 control-label">Data 6</label>

					  <div class="col-sm-9">

						  <textarea class="form-control" name="details6">{{$subcategory->details6}}</textarea>
					  </div>
				  </div>

                <div class="form-group">
                  <label class="col-sm-3 control-label">Filter Title 7</label>

                  <div class="col-sm-9">
                    <input type="text" placeholder="" class="form-control" name="data7"
                           value="{{ $subcategory->data7 }}">
                  </div>
                </div>

				  <div class="form-group">
					  <label class="col-sm-3 control-label">Data 7</label>

					  <div class="col-sm-9">

						  <textarea class="form-control" name="details7">{{$subcategory->details7}}</textarea>
					  </div>
				  </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label">Filter Title 8</label>

                  <div class="col-sm-9">
                    <input type="text" placeholder="" class="form-control" name="data8"
                           value="{{ $subcategory->data8 }}">
                  </div>
                </div><div class="form-group">
					  <label class="col-sm-3 control-label">Data 8</label>

					  <div class="col-sm-9">

						  <textarea class="form-control" name="details8">{{$subcategory->details8}}</textarea>
					  </div>
				  </div>
                
                <div class="form-group">
                  <div class="col-sm-offset-3 col-sm-9"></div>
                </div>
                <div class="form-group">
                  <div class="col-sm-offset-3 col-sm-9">
                    <input type="hidden" name="id" value="{{ $subcategory->id }}">
                    <button class="btn btn-default" type="submit">Update</button>
                    {{ csrf_field() }}
                  </div>
                </div>
              </div>
            </div>
          </form>
        
        
        </div>
        <!--/.page-content-->
      </div>
      <!--/.row-->
    </div>
    <!--/.container-->
  </div>
@endsection