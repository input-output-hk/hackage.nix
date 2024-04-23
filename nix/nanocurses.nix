{
  "1.5.1" = {
    sha256 = "23f8da6630b28be0580ebb5f6cc957178811221c17f39383cc9422d8f481b771";
    revisions = {
      r0 = {
        nix = import ../hackage/nanocurses-1.5.1-r0-9f665142425bd6fd22a1f2cbcdfa034678daf495f8bcfe48397a490ef1d64e5a.nix;
        revNum = 0;
        sha256 = "9f665142425bd6fd22a1f2cbcdfa034678daf495f8bcfe48397a490ef1d64e5a";
      };
      default = "r0";
    };
  };
  "1.5.2" = {
    sha256 = "35bc629de613a20f7f885ea5222378f40bd28befe07e575d68a637b9f7706f12";
    revisions = {
      r0 = {
        nix = import ../hackage/nanocurses-1.5.2-r0-35c6ebdbffdc149ebaf5ef31eb21ac04d033045cb63739d3049b64bff4e9d1d6.nix;
        revNum = 0;
        sha256 = "35c6ebdbffdc149ebaf5ef31eb21ac04d033045cb63739d3049b64bff4e9d1d6";
      };
      default = "r0";
    };
  };
}