Bar
  - color
  - points

Child
  - has one clip
  - has many scores
  - name
  - current_points

Score
  - belongs to child
  - points
  - date

Reward
  - name
  - cost

RewardClaim
  - belongs to child
  - name
  - cost

Data Setup

Bar.create(name: "Outstanding", points: 4, color: "pink")
Bar.create(name: "Role Model", points: 3, color: "purple")
Bar.create(name: "Showing Pride", points: 2, color: "blue")
Bar.create(name: "Ready to Listen", points: 1, color: "green", default: true)
Bar.create(name: "Think About It", points: 0, color: "yellow")
Bar.create(name: "Parent's Choice", points: -1, color: "orange")
Bar.create(name: "Go To Bed Early", points: -2, color: "red")

Reward.create(name: "Go to movie", cost: 5)
Reward.create(name: "Stay up late", cost: 3)
Reward.create(name: "Candy time", cost: 1)
Reward.create(name: "Skyzone", cost: 5)
Reward.create(name: "$5 towards savings", cost: 5)

View setup

#bar row
<div class="row">
  <div class="col s12">
    <%= button_to @clip, method: :put, params: { points: bar.points }, class:"waves-effect waves-light btn #{bar.color}", style: 'width: 100%;' do %>
      <%= bar.name %>
      <% if bar.points == @clip.points %>
        <i class="large material-icons right">star</i>
      <% end %>
    <% end %>
  </div>
</div>

#claim reward
<div class="row">
  <div class="col s3 right">
    <a class="waves-effect waves-light btn pink" href="#modal">
      Claim Rewards: <%= current_child.total_rewards %>
    </a>
  </div>
</div>

#reward modal
<div id="modal" class="modal">
  <div class="modal-content">
    <h4>Claim Rewards</h4>
    <%= render @rewards %>
  </div>
</div>

#reward
<div class="row">
  <div class="col s12">
    <%= button_to reward_claims_path(reward.id), class:"waves-effect waves-light btn bar" do %>
      <%= reward.name %>(<%= reward.cost %>)
    <% end %>
  </div>
</div>

layout setup
<%= stylesheet_link_tag "http://fonts.googleapis.com/icon?family=Material+Icons" %>
<%= stylesheet_link_tag "https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css" %>
<%= javascript_include_tag "https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js" %>

