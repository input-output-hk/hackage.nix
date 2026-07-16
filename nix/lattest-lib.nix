{
  "0.1.0.0" = {
    sha256 = "62438dd3faf5a404cea50e19a3c94709d89a88b4f12963b172fecec42c4e9041";
    revisions = {
      r0 = {
        nix = import ../hackage/lattest-lib-0.1.0.0-r0-471f8081b2b718d4125d50ffbfaa9be848eb8e148f8c688b1950e363038549f6.nix;
        revNum = 0;
        sha256 = "471f8081b2b718d4125d50ffbfaa9be848eb8e148f8c688b1950e363038549f6";
      };
      default = "r0";
    };
  };
  "0.1.1" = {
    sha256 = "004f667c8016b77f5ffd6412d3ebec3c9f8cad8608779e663ff1fedd58fb49c1";
    revisions = {
      r0 = {
        nix = import ../hackage/lattest-lib-0.1.1-r0-4709ab83d31b6429eb7d9f93bfc8e294bde933a1f50c37a1711e9a93d4ead365.nix;
        revNum = 0;
        sha256 = "4709ab83d31b6429eb7d9f93bfc8e294bde933a1f50c37a1711e9a93d4ead365";
      };
      default = "r0";
    };
  };
}