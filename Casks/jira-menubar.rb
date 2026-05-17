cask "jira-menubar" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0"
  sha256 arm: "9f50b6c5cc49a66a88a42d417c87757208d342360ac50d51eef9161963f32d5c",
         intel: "26b35002ad1a91a66eb8200b8672ce74a6fcaee352582e961d03e3b82f1e274f"

  url "https://github.com/Songgyubin/jira-menubar-releases/releases/download/v#{version}/Jira-Menubar-#{version}-#{arch}.dmg"
  name "Jira Menubar"
  desc "macOS menu bar Jira ticket dashboard"
  homepage "https://github.com/Songgyubin/JiraDashboard"

  app "Jira Menubar.app"

  zap trash: [
    "~/Library/Application Support/jira-menubar",
    "~/Library/Preferences/com.jirawidget.menubar.plist",
    "~/Library/Saved Application State/com.jirawidget.menubar.savedState",
  ]
end
