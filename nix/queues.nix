{
  "1.0.0" = {
    sha256 = "59d3f1ff962f1d04690eb5f9eea6880c616609709478cc6ba60184d31e35d656";
    revisions = {
      r0 = {
        nix = import ../hackage/queues-1.0.0-r0-b77fd0876781df1a70cf703c758d1873c858b318fc4fd11fb534f1326432aa2f.nix;
        revNum = 0;
        sha256 = "b77fd0876781df1a70cf703c758d1873c858b318fc4fd11fb534f1326432aa2f";
      };
      r1 = {
        nix = import ../hackage/queues-1.0.0-r1-9b9f36a467187e14deec539311b75104bd62a23c509f76f39c79d44ffa5d52ae.nix;
        revNum = 1;
        sha256 = "9b9f36a467187e14deec539311b75104bd62a23c509f76f39c79d44ffa5d52ae";
      };
      default = "r1";
    };
  };
}