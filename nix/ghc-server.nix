{
  "1.0" = {
    sha256 = "f1bc329c465a12964cf8eeeb655d7114a805a1f96a8965629194194d3a230385";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-server-1.0-r0-209cd80bb99ddc841d8d958757d953d9717520304909e018a47e9f03eecfac90.nix;
        revNum = 0;
        sha256 = "209cd80bb99ddc841d8d958757d953d9717520304909e018a47e9f03eecfac90";
        };
      default = "r0";
      };
    };
  "1.1" = {
    sha256 = "84d6a2e971f3b445536d17d57a0f12cfadbf1dff7c5b658ddf064fd5537ff9e5";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-server-1.1-r0-ab2c1706db12ebaf02e0813411b52844a95a518a40c6886f006cbf907ceb2ddf.nix;
        revNum = 0;
        sha256 = "ab2c1706db12ebaf02e0813411b52844a95a518a40c6886f006cbf907ceb2ddf";
        };
      default = "r0";
      };
    };
  "1.2" = {
    sha256 = "b68988eb8182a2f686738f399d95679d4005e3127e49bc4b8ef020485b8be5c1";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-server-1.2-r0-e46a4eadf608a5034c3dec0a6d3723caf8a31f3cc46921e77e8a0ac2025faa40.nix;
        revNum = 0;
        sha256 = "e46a4eadf608a5034c3dec0a6d3723caf8a31f3cc46921e77e8a0ac2025faa40";
        };
      default = "r0";
      };
    };
  }