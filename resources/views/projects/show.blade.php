@extends('layouts.app')
@section('content')



      <!-- The justified navigation menu is meant for single line per list item.
           Multiple lines will require custom code not provided by Bootstrap. -->

               <div class="col-md-9 col-lg-9 pull-left">
                 <!-- Jumbotron -->
                 <div class="well well-lg">
                   <h1 style="color:green; font-size:bold";>{{ $project->name}}</h1>
                   <p class="lead" style="color:aqua;" >{{ $project->description}}</p>
                 <!-- <p><a class="btn btn-lg btn-success" href="#" role="button">Get started today</a></p>  -->
                 </div>

                 <!-- Example row of columns -->
                 <div class="row col-lg-12 col-md-12 col-sm-12" style="background: white; margin: 10px;">
                   <!--  <li ><a href="/projects/create" class="pull-right btn btn-primary">Add project</a></li> -->
                     <br/>


                  <div class="row container-Fluid">
                     <form method="post" action="{{route('comments.store')}}">
                       {{csrf_field()}}


                       <input type="hidden" name="commentable_type" value=" App\project">
                       <input type="hidden" name="commentable_id" value="{{$project->id}}">
                       <div class="form-group">
                         <label for="company-content" style="color:blue;">Comment </label>
                         <textarea  style="resize:vertical" id="company-content" rows="3" cols="10"
                          name="body" spellcheck="false" class="form-control autosize-target text-left">

                         </textarea>

                       </div>

                        <div class="form-group">
                          <label for="company-content " style="color:blue";>proof or work(Url)</label>
                          <textarea placeholder="Enter Url " style="resize:vertical" id="company-content" rows="2" cols="10"
                           name="url" spellcheck="false" class="form-control autosize-target text-left">

                          </textarea>

                        </div>


                        <div class="form-group">
                          <input type="submit" class="btn btn-primary" value="submit">
                        </div>
                     </form>
                   </div>

               @include('partials.comments');






                 </div>






               <div class="col-sm-3 col-md-3 col-lg-3 pull-right" style="float:right;">
                         <!--<div class="sidebar-module sidebar-module-inset">
                           <h4>About</h4>
                           <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
                         </div> -->
                         <div class="sidebar-module">
                           <h1 style="color:red;">Actions</h1>
                           <ol class="list-unstyled">
                             <li><a href="/projects/{{$project->id}}/edit">Edit</a></li>
                             <li ><a href="/projects/create">Add project</a></li>
                             <li ><a href="/projects">My Projects</a></li>
                              <!-- <li ><a href="/projects/create">creat new Project</a></li> -->
                              <br/>
                              @if($project->user_id == Auth::user()->id)
                             <li>
                               <a href="#" onclick="
                               var result = confirm('Are you wish to delete this project');
                               if(result) {
                                 event.preventDefault();
                                 document.getElementById('delete-form').submit();
                               }

                               "
                               >


                               Delete</a>
                               <form id="delete-form" action="{{route('projects.destroy',[$project->id])}}" method="post"
                                 style="display:none;">
                                 <input type="hidden" name="_method" value="delete">
                                 {{csrf_field()}}

                               </form>


                             </li>

                               @endif
                           <!--  <li><a href="#">Add New User</a></li> -->
                           </ol>

               <hr/>
               <?php //echo " <h1>Add Member</h1>
              // <div class="row">

                   //<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                     //<form id="add-user" action="{{route('projects.adduser')}}" method="post"
//>
                     //{{csrf_field()}}
                    // <div class="input-group">
                       //input  name="project_id" class="form-control" value="{{$project->id}}" type="hidden">
                       //<input type="text" class="form-control" placeholder="Email" name="email">
                       //<span class="input-group-btn">
                        // <button class="btn btn-default" type="submit">Add!</button>
                       //</span>
                     //</div><!-- /input-group -->
                   //</form>
                  // </div><!-- /.col-lg-6 -->
          //  </div><!-- /.row -->
   //</br>


                    //<h3>Team Member</h3>
            //<ol class="list-unstyled">

            //<li><a href="#">Ahmed</a></li>
          //  <li><a href="#">Mohamed</a></li>
          //  <li><a href="#">Hassan</a></li>

          //  </ol>
            // </div>
            // <!--<div class="sidebar-module">
            //   <h4>Members</h4>
              // <ol class="list-unstyled">
                // <li><a href="#">March 2014</a></li>

              // </ol>
            // </div> -->

   //</div>"
    ?>






    @endsection
