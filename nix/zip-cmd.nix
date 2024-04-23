{
  "1.0.1" = {
    sha256 = "bff25fc55a754f9c7940ae880d5201d8b2ccfb12eef05916097091bce08750a2";
    revisions = {
      r0 = {
        nix = import ../hackage/zip-cmd-1.0.1-r0-c524c3cc159c81aa5679cd2ab9fb74144512639d66968c28dffeb515d46fa1de.nix;
        revNum = 0;
        sha256 = "c524c3cc159c81aa5679cd2ab9fb74144512639d66968c28dffeb515d46fa1de";
      };
      r1 = {
        nix = import ../hackage/zip-cmd-1.0.1-r1-f6c2e6cacb7ed1ada06d6a4144b9574fb059237663296bec1ac3fdbb7b275338.nix;
        revNum = 1;
        sha256 = "f6c2e6cacb7ed1ada06d6a4144b9574fb059237663296bec1ac3fdbb7b275338";
      };
      default = "r1";
    };
  };
}