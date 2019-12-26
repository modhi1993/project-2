# README





# What a bargain
This project is basically an mvc based web page where people could post deals they got based on cities they live in . others get to see what kind of offers and greate deals are shared in a specifc city

## My Project Deployment
https://project1993.herokuapp.com/
## Technologies used in the project
1. ruby
2. rails
3. HTML
4. CSS
## wireframes and user stories.
1. The user should be able to sign up and log in.
2. The user should be able to to add, update and delete his bargain haul “whatever he purchased”.
3. The user should be able to view the list of hauls he previously created.
4. The user should be able to view others hauls.
5. he user should be able to log out.

<!--link-->


[wireframe](https://www.canva.com/design/DADurJ5Rl88/qhpovYhr700iy_--22VQ8Q/view?utm_content=DADurJ5Rl88&utm_campaign=designshare&utm_medium=link&utm_source=publishsharelink)


[ERD](https://www.lucidchart.com/invitations/accept/ebc3b884-25a4-46cd-82e1-f496318ef746)
[font](https://fonts.google.com)

[pictures](https://unsplash.com)
## Planning and Development Process

### day1
wireframe and strucrering the project with some html
### day2
worked on the models and databases withe some ruby coding
### day3
improved my css styling and making sure its resposive
### day4
adding extra features and more styling

# Describe any lines or function in the code
```ruby


 
  <div class="comment-section-container"> 

<h3>Comments</h3>
<% @global.comments.each do |comment| %>

 <div class="comment-section-author">
 <% if comment.user.profile.image !=nil %>
 
 <img src="<%= comment.user.profile.image%>" alt="" width="50" height="50" class="imgs"> 
      <% end %>
    <div class="comment-section-name">
    
     <p>
  <%= comment.user.name%> : <%= comment.body %><br>
    
  </p>
    </div>
 
  <div class="comment-section-text">
    <%if user_signed_in?%> 
 <% if (current_user.id == comment.user_id) %>&nbsp; &nbsp;&nbsp; &nbsp;
  <%= link_to 'Delete', [comment.haul, comment],
               method: :delete,
               data: { confirm: 'Are you sure?' } %>
    <% end %>
     </div>
     <% end %>
  </p>
  </div>
<hr>


<% end %>
</div>
```
this code retrives data from four diffrent models.