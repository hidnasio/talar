defmodule Visual.HomeTest do
  use ExUnit.Case
  use Hound.Helpers

  hound_session(
    driver: %{
      chromeOptions: %{
        "args" => [
          # "--headless",
          "--disable-gpu",
          "--lang=en-US,en",
          "--verbose",
          "--log-level=0"
        ]
      }
    }
  )

  test "the truth" do
    navigate_to("/")

    execute_script(PercyClient.get_script())

    execute_script("""
      function takeAPercySnapshot(snapshotName, snapshotOptions) {
        const percyAgentClient = new PercyAgent({
          clientInfo: 'awesome-percy-sdk@0.0.1',
          environmentInfo: 'some helpful os or browser information for debugging'
        })

        percyAgentClient.snapshot(snapshotName, snapshotOptions)
      }

      takeAPercySnapshot("Home Page", {});
    """)
  end
end
