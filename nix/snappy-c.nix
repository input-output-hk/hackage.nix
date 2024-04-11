{
  "0.1.0" = {
    sha256 = "c713148f26136a6e5bb462d927cd8d897122bc5a860fa862e4528168675c030b";
    revisions = {
      r0 = {
        nix = import ../hackage/snappy-c-0.1.0-r0-adfbde6045f2a7e97b2538ca7c1258ab8df83c53e071ee5d5f46f104b634373b.nix;
        revNum = 0;
        sha256 = "adfbde6045f2a7e97b2538ca7c1258ab8df83c53e071ee5d5f46f104b634373b";
        };
      r1 = {
        nix = import ../hackage/snappy-c-0.1.0-r1-d79733db50552dc471710be8a16cc5f4fb69f210ece15fb430a50cb02a24f014.nix;
        revNum = 1;
        sha256 = "d79733db50552dc471710be8a16cc5f4fb69f210ece15fb430a50cb02a24f014";
        };
      default = "r1";
      };
    };
  "0.1.1" = {
    sha256 = "6e10ffb902910fd692dbf6d4c37ef8260142ab84a7d150b002fa16be2d2944b7";
    revisions = {
      r0 = {
        nix = import ../hackage/snappy-c-0.1.1-r0-bdcb7aad6400d11e7e6799d699ee93c793c4c91305fe864e21f84141b9301d28.nix;
        revNum = 0;
        sha256 = "bdcb7aad6400d11e7e6799d699ee93c793c4c91305fe864e21f84141b9301d28";
        };
      default = "r0";
      };
    };
  }