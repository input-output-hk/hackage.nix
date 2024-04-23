{
  "0.1.0.0" = {
    sha256 = "1cd31a667539140401dd3e2af7c0130a917d8e5a87abfaf39ba6a1b65559e236";
    revisions = {
      r0 = {
        nix = import ../hackage/initialize-0.1.0.0-r0-6dbfe9aa63102c0e24e8715828e9ba8d6f04060c38929be779c8ea174926d46b.nix;
        revNum = 0;
        sha256 = "6dbfe9aa63102c0e24e8715828e9ba8d6f04060c38929be779c8ea174926d46b";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "04148fac7ac7a90475f5b3ef3a3404b13ae3f67bf62aedf15f2214d954a16b4c";
    revisions = {
      r0 = {
        nix = import ../hackage/initialize-0.1.1.0-r0-744e3313cc87a8555781b2aa4aee71fa890306654a7e43b706be665be5debf9e.nix;
        revNum = 0;
        sha256 = "744e3313cc87a8555781b2aa4aee71fa890306654a7e43b706be665be5debf9e";
      };
      default = "r0";
    };
  };
}