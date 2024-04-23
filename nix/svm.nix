{
  "1.0.0" = {
    sha256 = "fcdfe5eaf4485c777d497af98ebf629d89ec669eab3bd06bfbc1ecf2780520af";
    revisions = {
      r0 = {
        nix = import ../hackage/svm-1.0.0-r0-4b1a86754fcfa56c79c27e37a55edeb2e30c7aaee625a0123e71dd61507ab73b.nix;
        revNum = 0;
        sha256 = "4b1a86754fcfa56c79c27e37a55edeb2e30c7aaee625a0123e71dd61507ab73b";
      };
      default = "r0";
    };
  };
  "1.0.0.1" = {
    sha256 = "5fcfb822c620da4da5d9bf7c863c14acbf595f41ddc3e031ae1048743f0dd9a5";
    revisions = {
      r0 = {
        nix = import ../hackage/svm-1.0.0.1-r0-fcce2257058fa3aebc8527e6245e64052a42aa930c7564e0d8206a68d51392aa.nix;
        revNum = 0;
        sha256 = "fcce2257058fa3aebc8527e6245e64052a42aa930c7564e0d8206a68d51392aa";
      };
      default = "r0";
    };
  };
}