google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawChart);
function drawChart() {
  var data = google.visualization.arrayToDataTable([
    ['Task', 'Hours per Day'],
    ['Education',     '<%= @known_experts_hash["Education"].length %>'],
    ['Science',      '<%= @known_experts_hash["Science"].length %>'],
    ['Foreign Policy',  '<%= @known_experts_hash["Foreign Policy"].length %>'],
    ['Health', '<%= @known_experts_hash["Health"].length %>'],
    ['Politics',    '<%= @known_experts_hash["Politics"].length %>'],
    ['Social Justice',    '<%= @known_experts_hash["Social Justice"].length %>'],
    ['Sports',    '<%= @known_experts_hash["Sports"].length %>'],
    ['Technology',    '<%= @known_experts_hash["Technology"].length %>'],
    ['Business',    '<%= @known_experts_hash["Business"].length %>']
  ]);

  var options = {
    title: 'Perspectives You Follow (By Category)',
    pieHole: 0.4
  };

  var chart = new google.visualization.PieChart(document.getElementById('piechart'));

  chart.draw(data, options);
}
