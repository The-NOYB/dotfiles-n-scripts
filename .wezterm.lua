local wezterm = require 'wezterm';
return {
  disable_default_key_bindings=true,
  colors = {
    foreground="#bababa",
    background="#161b1d",i
  },
  adjust_window_size_when_changing_font_size=false, 
  exit_behavior="Close",
  font = wezterm.font("Terminus (TTF)", {stretch="Expanded", weight="Black"}),
  font_size = 14,
  keys = {
    {key="k", mods="CTRL", action="IncreaseFontSize"},
    {key="j", mods="CTRL", action="DecreaseFontSize"},
    {key="=", mods="CTRL", action="ResetFontSize"},
    {key="f", mods="ALT", action=wezterm.action{Search={CaseInSensitiveString=""}}},
    {key="c", mods="ALT", action="Copy"},
    {key="v", mods="ALT", action="Paste"},
    {key="w", mods="ALT", action=wezterm.action{CloseCurrentTab={confirm=false}}},
    {key="t", mods="ALT", action=wezterm.action({SpawnTab="DefaultDomain"})},
    {key="LeftArrow", mods="ALT", action=wezterm.action{ActivatePaneDirection="Left"}},
    {key="RightArrow", mods="ALT", action=wezterm.action{ActivatePaneDirection="Right"}},
    {key="UpArrow", mods="ALT", action=wezterm.action{ActivatePaneDirection="Up"}},
    {key="DownArrow", mods="ALT", action=wezterm.action{ActivatePaneDirection="Down"}},
    {key="{", mods="ALT|SHIFT", action=wezterm.action({SplitHorizontal={domain="CurrentPaneDomain"}})},
    {key="}", mods="ALT|SHIFT", action=wezterm.action({SplitVertical={domain="CurrentPaneDomain"}})},
    {key="q", mods="ALT", action=wezterm.action{CloseCurrentPane={confirm=true}}},
    {key="Tab", mods="CTRL", action=wezterm.action({ActivateTabRelative=1})},
  },
  mouse_bindings = {
    { event={Down={streak=3, button="Left"}},
      action={SelectTextAtMouseCursor="Line"},
      mods="NONE"
    },
  },
}
