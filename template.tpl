___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.

___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "categories": [
    "ANALYTICS",
    "UTILITY"
  ],
  "displayName": "Amplitude Browser SDK Configuration Variable",
  "description": "Builds a minimal object of additional Amplitude Browser SDK init options for the Amplitude Analytics Browser SDK tag template, starting with attribution trackingMethod.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "SELECT",
    "name": "trackingMethod",
    "displayName": "Tracking method",
    "simpleValueType": true,
    "help": "https://amplitude.com/docs/sdks/analytics/browser/browser-sdk-2#event-property-tracking",
    "selectItems": [
      {
        "displayValue": "User property",
        "value": "userProperty"
      },
      {
        "displayValue": "Event property",
        "value": "eventProperty"
      },
      {
        "displayValue": "User property and event property",
        "value": "both"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const config = {};

if (data.trackingMethod) {
  config.autocapture = {
    attribution: {
      trackingMethod: data.trackingMethod === 'both' ? ['userProperty', 'eventProperty'] : data.trackingMethod,
    },
  };
}

return config;


___TESTS___

scenarios:
- name: Returns an empty object when tracking method is unset
  code: |-
    const variableResult = runCode({});
    assertThat(variableResult).isEqualTo({});
- name: Returns attribution trackingMethod for event property tracking
  code: |-
    const variableResult = runCode({
      trackingMethod: 'eventProperty'
    });

    assertThat(variableResult).isEqualTo({
      autocapture: {
        attribution: {
          trackingMethod: 'eventProperty'
        }
      }
    });
- name: Returns attribution trackingMethod for both tracking methods
  code: |-
    const variableResult = runCode({
      trackingMethod: 'both'
    });

    assertThat(variableResult).isEqualTo({
      autocapture: {
        attribution: {
          trackingMethod: ['userProperty', 'eventProperty']
        }
      }
    });
setup: ''


___NOTES___

Created on 22/04/2026, 00:00:00


