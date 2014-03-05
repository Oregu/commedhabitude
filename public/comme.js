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

initPage = function(l1, l2) {
  $(function(){
    var c = React.renderComponent(
      Singing({l1:l1,l2:l2}),
      document.getElementById('root'));

    var fetch = function(comp) {
      $.getJSON("/sing", function(data) {
        comp.setProps(data);
      });
    };

    $(window).keypress(function(e) {
      if (e.keyCode == 32) {
        fetch(c);
      }
    });

    $('#root').click(function() {
      fetch(c);
    });
  });
}
