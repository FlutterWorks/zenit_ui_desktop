import { html } from 'lit-html';
import { ArgTypes } from '@storybook/web-components';

import results from '../../../.jest-test-results.json';
import { withTests } from '@storybook/addon-jest';

//import docs from './my-component.docs.mdx';
import { Switch } from './switch';

export default {
  title: 'Components/Switch',
  component: 'zenit-switch',
  decorators: [withTests({ results })],
  parameters: {
    docs: {
      description: "A switch is a component typically used in settings to turn something on or off."
      //page: docs
    }
  },
  argTypes: {} as unknown as ArgTypes<Switch>
}

// Some example stories:
// export const Enabled = ({checked, disabled}) => html`<zenit-switch ?disabled=${disabled} ?checked=${checked} />`;
// export const Disabled = Enabled.bind({});
// Disabled.args = {
//   disabled: true
// }
// const Template = ({ firstArg }) => html`<zenit-example firstArg=${firstArg}></zenit-example>`;
// export const Primary = Template.bind();
// Primary.args = {
//   firstArg: "This!"
// }