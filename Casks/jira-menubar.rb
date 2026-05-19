cask "jira-menubar" do
  arch arm: "arm64", intel: "x64"

  version "1.0.3"
  sha256 arm:   "06eef8d0dbe407437dc1e53c4c3efc380ee685a83e42d2ef61dc88436f3dad86",
         intel: "5256c3a2dc8a832fe04ab2c40eb6234fc4b8b773b7083c382926df88c432e95e"

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
