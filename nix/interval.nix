{
  "1.20160821" = {
    sha256 = "773ef5d0296c8639d4aa47dad4bdbdec7a28dd476765f133fc8dd629293acadd";
    revisions = {
      r0 = {
        nix = import ../hackage/interval-1.20160821-r0-eb378ff5c513294621b0a50be2db56aef53ab9b4f63ef325d20fc81640522598.nix;
        revNum = 0;
        sha256 = "eb378ff5c513294621b0a50be2db56aef53ab9b4f63ef325d20fc81640522598";
      };
      r1 = {
        nix = import ../hackage/interval-1.20160821-r1-fa0c92596237e63a8804b9a208bc185945100d0932e8481348990f1c16d586a8.nix;
        revNum = 1;
        sha256 = "fa0c92596237e63a8804b9a208bc185945100d0932e8481348990f1c16d586a8";
      };
      default = "r1";
    };
  };
}