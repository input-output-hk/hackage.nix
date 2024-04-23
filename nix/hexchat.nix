{
  "0.0.1.0" = {
    sha256 = "9b581f0e21dc3105fa4f8e636eeea04077eeb0a3902f40df416103d677b39f97";
    revisions = {
      r0 = {
        nix = import ../hackage/hexchat-0.0.1.0-r0-736973ade8a8b4a1abaa1241f32a601cc56a799194e0c8790ab6e4d41ba9ee27.nix;
        revNum = 0;
        sha256 = "736973ade8a8b4a1abaa1241f32a601cc56a799194e0c8790ab6e4d41ba9ee27";
      };
      r1 = {
        nix = import ../hackage/hexchat-0.0.1.0-r1-37f04ded401798b93c7f952f9492ca127eacdb02301d02751dfa53717dacd649.nix;
        revNum = 1;
        sha256 = "37f04ded401798b93c7f952f9492ca127eacdb02301d02751dfa53717dacd649";
      };
      default = "r1";
    };
  };
  "0.0.2.0" = {
    sha256 = "24930c5596cf000eb6c1dc728b8d5557bdfa403fc1800eac5e4430e6c74fa4af";
    revisions = {
      r0 = {
        nix = import ../hackage/hexchat-0.0.2.0-r0-5fe92e36ff1bd841277a370f400fbf48426af6408719ade5beb7d150a215c07b.nix;
        revNum = 0;
        sha256 = "5fe92e36ff1bd841277a370f400fbf48426af6408719ade5beb7d150a215c07b";
      };
      default = "r0";
    };
  };
}