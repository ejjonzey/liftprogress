@LiftForm = React.createClass
    getInitialState: ->
        Date: ''
        liftname: ''
        ismetric: false
        weightslifted: ''
        repsperformed: ''
        onerm: ''
    handleValueChange: (e) ->
        valueName = e.target.name
        @setState "#{ valueName }": e.target.value
       handleSubmit: (e) ->
        e.preventDefault()
        $.post '', {lift: @state}, (data) => 
            @props.handleNewLift data
            @setState @getInitialState()
        ,   'JSON'
    render: ->
        React.DOM.form
            className: 'form-inline'
            onSubmit: @handleSubmit
            React.DOM.div
                className: 'form-group'
                React.DOM.input
                    type: 'date'
                    className: 'form-control'
                    placeholder: 'date'
                    name: 'date'
                    value: @state.date
                    onChange: @handleValueChange
                React.DOM.input
                    type: 'text'
                    className: 'form-control'
                    placeholder: 'liftname'
                    name: 'liftname'
                    value: @state.liftname
                    onChange: @handleValueChange
                React.DOM.input
                    type: 'boolean'
                    className: 'form-control'
                    placeholder: 'ismetric'
                    name: 'ismetric'
                    value: @state.ismetric
                    onChange: @handleValueChange
                React.DOM.input
                    type: 'number'
                    className: 'form-control'
                    placeholder: 'weightlifted'
                    name: 'weightlifted'
                    value: @state.weightlifted
                    onChange: @handleValueChange
                React.DOM.input
                    type: 'number'
                    className: 'form-control'
                    placeholder: 'reps-performed'
                    name: 'reps-performed'
                    value: @state.repsperformed
                    onChange: @handleValueChange
                React.DOM.input
                    type: 'number'
                    className: 'form-control'
                    placeholder: 'onerm'
                    name: 'onerm'
                    value: @state.onerm
                    onChange: @handleValueChange
        
                React.DOM.button
                    type: 'submit'
                    className: 'btn btn-primary'
                    'Create Lift'
                
            