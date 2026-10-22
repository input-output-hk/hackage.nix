{
  "1.0.0.0" = {
    sha256 = "daecb25e3ba7a5ba127f910f0c61a5557ff2a317c165a529e5cf3cdc3340f359";
    revisions = {
      r0 = {
        nix = import ../hackage/hs-bindgen-1.0.0.0-r0-9e122033c57dfc8be5f1a1b5c95ed1d6494c36fe067257c84efe6e08fcfb3fc1.nix;
        revNum = 0;
        sha256 = "9e122033c57dfc8be5f1a1b5c95ed1d6494c36fe067257c84efe6e08fcfb3fc1";
      };
      r1 = {
        nix = import ../hackage/hs-bindgen-1.0.0.0-r1-5475059b532890189416c2fd68931c2155d7a52cb637364c7ee1097c644199d9.nix;
        revNum = 1;
        sha256 = "5475059b532890189416c2fd68931c2155d7a52cb637364c7ee1097c644199d9";
      };
      default = "r1";
    };
  };
}