<Screen
  id="page2"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  urlSlug="page2"
  uuid="f00fdeb7-3943-4c77-a3f6-1df48c2e1c47"
>
  <RetoolUserActionQuery
    id="login"
    email="{{ EmailInput.value }}"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    metadata={null}
    password="{{ PasswordInput.value }}"
    resourceName="RetoolUserAction"
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="openUrl"
      params={{
        ordered: [{ url: "/" }, { options: { ordered: [{ newTab: false }] } }],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </RetoolUserActionQuery>
  <Frame
    id="$main2"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="0"
    sticky={null}
    type="main"
  >
    <Container
      id="Container"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showBorder={false}
      style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
    >
      <Header>
        <Text
          id="containerTitle4"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="1cc5e" viewKey="Login">
        <Form
          id="LoginForm"
          disabled=""
          disableSubmit="{{ LoginForm.invalid }}"
          footerPadding="4px 12px"
          footerPaddingType="normal"
          headerPadding="4px 12px"
          headerPaddingType="normal"
          margin="8px 8px"
          marginType="none"
          padding="48px 24px"
          paddingType="none"
          requireValidation={true}
          showBody={true}
          showBorder={false}
          style={{ ordered: [] }}
        >
          <Text
            id="FormTitle"
            marginType="normal"
            value=" ### Log in Now"
            verticalAlign="center"
          />
          <Button
            id="LoginWithGoogleButton"
            iconBefore="bold/computer-logo-google"
            marginType="normal"
            style={{
              ordered: [
                { border: "{{ theme.primary}}" },
                { label: "{{ theme.primary }}" },
              ],
            }}
            styleVariant="outline"
            text="Sign in with Google"
          >
            <Event
              event="click"
              method="openUrl"
              params={{
                ordered: [
                  { options: { ordered: [{ newTab: false }] } },
                  { url: "https://login.retool.com/googlelogin?origin=login" },
                ],
              }}
              pluginId=""
              type="util"
              waitMs="0"
              waitType="debounce"
            />
          </Button>
          <Text
            id="text3"
            horizontalAlign="center"
            marginType="normal"
            style={{ ordered: [] }}
            value={'<p style="font-weight:500">OR</p>'}
            verticalAlign="center"
          />
          <Divider id="divider1" marginType="normal" textSize="default" />
          <Divider id="divider2" marginType="normal" textSize="default" />
          <Text
            id="text2"
            marginType="normal"
            style={{ ordered: [] }}
            value={
              '<p style="font-weight: 500">Enter the email and password for your account</p>'
            }
            verticalAlign="center"
          />
          <TextInput
            id="EmailInput"
            label=""
            labelPosition="top"
            marginType="normal"
            patternType="email"
            placeholder="name@company.com"
            required={true}
          />
          <PasswordInput
            id="PasswordInput"
            label=""
            labelPosition="top"
            marginType="normal"
            minLength="8"
            placeholder="••••••••••"
            required={true}
          />
          <Button
            id="formButton1"
            marginType="normal"
            style={{ ordered: [] }}
            submit={true}
            submitTargetId="LoginForm"
            text="Sign in"
          />
          <Alert
            id="ErrorAlert"
            description="{{ login.error }}"
            hidden="{{ !login.error }}"
            title="Error"
            type="error"
          />
          <Event
            event="submit"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="login"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Form>
      </View>
      <View
        id="973a9"
        disabled={false}
        hidden={false}
        iconPosition="left"
        viewKey="View 2"
      />
    </Container>
  </Frame>
</Screen>
