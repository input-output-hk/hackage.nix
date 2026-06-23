{
  "3.5.2" = {
    sha256 = "b662f73ec4f726e8dfe8ead900a1428381714a7ceadea9ba837360ed8ae69a8b";
    revisions = {
      r0 = {
        nix = import ../hackage/libffi-clib-3.5.2-r0-a68133a013cbd55637b974f9e637317c22a13e356342b04b6f721bf8ed2340f2.nix;
        revNum = 0;
        sha256 = "a68133a013cbd55637b974f9e637317c22a13e356342b04b6f721bf8ed2340f2";
      };
      default = "r0";
    };
  };
  "3.6.0" = {
    sha256 = "3fc489c342ea5306e2ca45c7f1d78c17bad384f1cc2187dda407c7fd251ff7b0";
    revisions = {
      r0 = {
        nix = import ../hackage/libffi-clib-3.6.0-r0-e84545cbb93246c2368141bb7e867aa0f544567e8a78c4bf403d1ae9cb6d953d.nix;
        revNum = 0;
        sha256 = "e84545cbb93246c2368141bb7e867aa0f544567e8a78c4bf403d1ae9cb6d953d";
      };
      default = "r0";
    };
  };
}