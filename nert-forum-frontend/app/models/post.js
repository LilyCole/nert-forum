import DS from 'ember-data';

export default DS.Model.extend({
  title: DS.attr('string'),
  textBody: DS.attr('string'),
  createdAt: DS.attr('date'),
  updatedAt: DS.attr('date'),
  user: DS.belongsTo('user'),
  comments: DS.hasMany('comment')
});