cask "jira-menubar" do
  arch arm: "arm64", intel: "x64"

  version "1.0.2"
  sha256 arm:   "51e6fc1482e231c6ee2f814ee1f8370c49fd1ecacac464a25e8b66d57286ee94",
         intel: "fa7372f2cd47804fa2d1e02932745219e20cdbbfaa937ad56772b921bfc87bb4"

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
