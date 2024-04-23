{
  "0.0.1" = {
    sha256 = "c3ec31e60ff073001d0fe1f4d6cbd47889e8fb5b9371cca425a636aa34777140";
    revisions = {
      r0 = {
        nix = import ../hackage/monadacme-0.0.1-r0-ea1e25a8beb5cb4e381f3982dd701c139bd5d62680ff8f5c89da963aedb3bf96.nix;
        revNum = 0;
        sha256 = "ea1e25a8beb5cb4e381f3982dd701c139bd5d62680ff8f5c89da963aedb3bf96";
      };
      default = "r0";
    };
  };
  "0.0.2" = {
    sha256 = "27799390bb992349fd821aa7388e47bd4e3bf5aa0203b77e725374f5c63455e1";
    revisions = {
      r0 = {
        nix = import ../hackage/monadacme-0.0.2-r0-39da851ab04615ba9b17cd465ac8311f3be3c4bd8b14008ef3c22eff5c7209c4.nix;
        revNum = 0;
        sha256 = "39da851ab04615ba9b17cd465ac8311f3be3c4bd8b14008ef3c22eff5c7209c4";
      };
      default = "r0";
    };
  };
  "0.1.0.0" = {
    sha256 = "590f008c35e469906a13f8869a40223822c225696e5c7c40eb64588141c432cc";
    revisions = {
      r0 = {
        nix = import ../hackage/monadacme-0.1.0.0-r0-785379d3e57eff894e459e798313881231d647a28a3be0347b3522d860fdaa55.nix;
        revNum = 0;
        sha256 = "785379d3e57eff894e459e798313881231d647a28a3be0347b3522d860fdaa55";
      };
      default = "r0";
    };
  };
}