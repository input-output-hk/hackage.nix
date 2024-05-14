{
  "2.0" = {
    sha256 = "aecc27bee1fa0914f625df1794b96fe091043148e7a525e36b8871c714724565";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-iotfleethub-2.0-r0-1cb9da3e737ed81ef6f360bd26446080c95c5e717ac2589f0dcfcb3c30dd5a28.nix;
        revNum = 0;
        sha256 = "1cb9da3e737ed81ef6f360bd26446080c95c5e717ac2589f0dcfcb3c30dd5a28";
      };
      r1 = {
        nix = import ../hackage/amazonka-iotfleethub-2.0-r1-585d3636eb0dc4bb06e0134865cb606722f98d46e2498a723cc3ce7631774baa.nix;
        revNum = 1;
        sha256 = "585d3636eb0dc4bb06e0134865cb606722f98d46e2498a723cc3ce7631774baa";
      };
      default = "r1";
    };
  };
}