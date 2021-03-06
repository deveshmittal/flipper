---
id: styling-components
title: Styling Components
---

We are using [emotion](https://emotion.sh) to style our components. For more details on how this works, please refer to emotion's documentation. We heavily use their [Styled Components](https://emotion.sh/docs/styled) approach, which allows you to extend our built-in components.

## Basic tags

For basic building blocks (views, texts, ...) you can use the styled object.

```javascript
import {styled} from 'flipper';

const MyView = styled('div')({
  fontSize: 10,
  color: colors.red
});
const MyText = styled('span')({ ... });
const MyImage = styled('img')({ ... });
const MyInput = styled('input')({ ... });
```

## Extending Flipper Components

It's very common for components to require customizing Flipper's components in some way. For example changing colors, alignment, or wrapping behavior. Flippers components can be wrapped using the `styled` function which allows adding or overwriting existing style rules.

```javascript
import {FlexRow, styled} from 'flipper';

const Container = styled(FlexRow)({
  alignItems: 'center',
});

class MyComponent extends Component {
  render() {
    return <Container>...</Container>;
  }
}
```

## CSS

The CSS-in-JS object passed to the styled components takes just any CSS rule, with the difference that it uses camel cased keys for the properties. Pixel-values can be numbers, any other values need to be strings.

The style object can also be returned from a function for dynamic values. Props can be passed to the styled component using React.

```javascript
const MyView = styled('div')(
  props => ({
    fontSize: 10,
    color:  => (props.disabled ? colors.red : colors.black),
  })
);

// usage
<MyView disabled />
```

Pseudo-classes can be used like this:

```javascript
'&:hover': {color: colors.red}`
```

## Colors

The colors module contains all standard colors used by Flipper. All the available colors are defined in `src/ui/components/colors.js` with comments about suggested usage of them. And we strongly encourage to use them. They can be required like this:

```javascript
import {colors} from 'flipper'
```
