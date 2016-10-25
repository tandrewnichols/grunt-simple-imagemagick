sinon = require('sinon')
proxyquire = require('proxyquire')

describe 'imagemagick', ->
  Given -> @cli = sinon.stub()
  Given -> @subject = proxyquire '../tasks/imagemagick',
    'simple-cli': @cli

  Then -> @cli.calledWith('imagemagick').should.be.true
