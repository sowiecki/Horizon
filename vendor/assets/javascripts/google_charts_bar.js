google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawChart);
function drawChart() {
  var data = google.visualization.arrayToDataTable([
  ['Genre', 'Currently Following', 'Not Yet Following', { role: 'annotation' } ],
  ['Education', '<%= @known_experts_hash["Education"].length %>', '<%= @unknown_experts_hash["Education"].length %>', ''],
  ['Science', '<%= @known_experts_hash["Science"].length %>', '<%= @unknown_experts_hash["Science"].length %>', ''],
  ['Foreign Policy', '<%= @known_experts_hash["Foreign Policy"].length %>', '<%= @unknown_experts_hash["Foreign Policy"].length %>', ''],
  ['Health', '<%= @known_experts_hash["Health"].length %>', '<%= @unknown_experts_hash["Health"].length %>', ''],
  ['Politics', '<%= @known_experts_hash["Politics"].length %>', '<%= @unknown_experts_hash["Politics"].length %>', ''],
  ['Social Justice', '<%= @known_experts_hash["Social Justice"].length %>', '<%= @unknown_experts_hash["Social Justice"].length %>', ''],
  ['Sports', '<%= @known_experts_hash["Sports"].length %>', '<%= @unknown_experts_hash["Sports"].length %>', ''],
  ['Technology', '<%= @known_experts_hash["Technology"].length %>', '<%= @unknown_experts_hash["Technology"].length %>', ''],
  ['Business', '<%= @known_experts_hash["Business"].length %>', '<%= @unknown_experts_hash["Business"].length %>', '']
]);

var options = {
  title: 'Your Total Exposure (By Category)',
  width: 600,
  height: 400,
  legend: { position: 'top', maxLines: 3 },
  bar: { groupWidth: '75%' },
  isStacked: true
};

  var chart = new google.visualization.BarChart(document.getElementById('chart_div'));

  chart.draw(data, options);
}
