var Singing = React.createClass({
  render: function() {
    return React.DOM.div({
      style: {
        textAlign:'center',
        marginTop: 140 },
      children: [
        React.DOM.p(null, this.props.l1),
        React.DOM.p(null, this.props.l2) ]
    });
  }
});

var fetch = function(comp) {
  $.getJSON("/sing", function(data) {
    comp.setProps(data);
  });
};
