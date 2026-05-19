cask "jira-menubar" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1"
  sha256 arm:   "06c195af6ea108c46bd63ad145ac84e734a71062f68549d2f8f67ddacb54d73f",
         intel: "75c436c2f6c7a73a38c13f896fd0f5a42d926d3b31879812e5afb3c722ef4baf"

  url "https://github.com/Songgyubin/jira-menubar-releases/releases/download/v#{version}/Jira-Menubar-#{version}-#{arch}.dmg"
  name "Jira Menubar"
  desc "Menu bar Jira ticket dashboard"
  homepage "https://github.com/Songgyubin/JiraDashboard"

  depends_on :macos

  app "Jira Menubar.app"

  zap trash: [
    "~/Library/Application Support/jira-menubar",
    "~/Library/Preferences/com.jirawidget.menubar.plist",
    "~/Library/Saved Application State/com.jirawidget.menubar.savedState",
  ]

  caveats <<~EOS
    Launch Jira Menubar after installation with:
      open -a "Jira Menubar"

    You can also open it from Finder > Applications > Jira Menubar.
    Once running, click the Jira Menubar icon in the macOS menu bar to open the dashboard.
  EOS
end
