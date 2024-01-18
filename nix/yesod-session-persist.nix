{
  "0.0.0.0" = {
    sha256 = "b15f8369570ef1494b71d413a52758011f57e90ec47bf3669b11019649baa3fe";
    revisions = {
      r0 = {
        nix = import ../hackage/yesod-session-persist-0.0.0.0-r0-6a91a7ec1085335fdedaeb27f505e8ab97726d4b30cdbe05ee5356e5d92829df.nix;
        revNum = 0;
        sha256 = "6a91a7ec1085335fdedaeb27f505e8ab97726d4b30cdbe05ee5356e5d92829df";
        };
      r1 = {
        nix = import ../hackage/yesod-session-persist-0.0.0.0-r1-21c7f84333e59d79674855c17be0df7eeae40a52ae95e535b648d480e19a1cee.nix;
        revNum = 1;
        sha256 = "21c7f84333e59d79674855c17be0df7eeae40a52ae95e535b648d480e19a1cee";
        };
      default = "r1";
      };
    };
  }