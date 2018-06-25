import React from 'react';
import { Button, Card, Image } from 'semantic-ui-react'

const AppShow = ({ id, name, description, category, price, version, author, logo }) => (
  <Card.Group>
    <Card>
      <Card.Content>
        <Image floated='right' size='small' src='{ logo }' />
        <Card.Header> ( name } </Card.Header>
        <Card.Meta> { category }, { version } </Card.Meta>
        <Card.Description>
          <strong> {description} </strong>
        </Card.Description>
      </Card.Content>
      <Card.Content extra>
        <div className='ui two buttons'>
          <Button basic color='green'>
            Install
          </Button>
          <Button basic color='red'>
            Down Vote
          </Button>
        </div>
      </Card.Content>
    </Card>
  </Card.Group>
)

export default AppShow;