{
  "0.1.0.0" = {
    sha256 = "887d3cda750418671773f6bba578d368dc8ffffd6700979ee79f449f7b6b0f8d";
    revisions = {
      r0 = {
        nix = import ../hackage/llm-with-context-0.1.0.0-r0-8cb3c0f75a9a0357a4a95c664a306a20226eed5d262415628dc3adc2d419d773.nix;
        revNum = 0;
        sha256 = "8cb3c0f75a9a0357a4a95c664a306a20226eed5d262415628dc3adc2d419d773";
      };
      r1 = {
        nix = import ../hackage/llm-with-context-0.1.0.0-r1-64cd9aee1754f83e4eeb02c4bbad89419852d56ab78e11d0844409a4a372211b.nix;
        revNum = 1;
        sha256 = "64cd9aee1754f83e4eeb02c4bbad89419852d56ab78e11d0844409a4a372211b";
      };
      r2 = {
        nix = import ../hackage/llm-with-context-0.1.0.0-r2-238ce727028d0f8e4eafe8d7879623b89a23b0c039219c4c6fe03ae6391ac4b4.nix;
        revNum = 2;
        sha256 = "238ce727028d0f8e4eafe8d7879623b89a23b0c039219c4c6fe03ae6391ac4b4";
      };
      default = "r2";
    };
  };
}