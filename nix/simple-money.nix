{
  "0.1.0.0" = {
    sha256 = "be7a168fc96a7ac1dcb472c939c1eb25ce70439077b85ba3e85437420f010da8";
    revisions = {
      r0 = {
        nix = import ../hackage/simple-money-0.1.0.0-r0-0a794057df418394727984116960a7f81e359c2b425c0a5713e8c8a01baf0887.nix;
        revNum = 0;
        sha256 = "0a794057df418394727984116960a7f81e359c2b425c0a5713e8c8a01baf0887";
      };
      r1 = {
        nix = import ../hackage/simple-money-0.1.0.0-r1-019e17471874b878f7738935d69c64e7697f461b6af9356600583b90552720e0.nix;
        revNum = 1;
        sha256 = "019e17471874b878f7738935d69c64e7697f461b6af9356600583b90552720e0";
      };
      default = "r1";
    };
  };
  "0.1.0.1" = {
    sha256 = "482631afc85ad0f176886a7c39093937ebd048b0a2396e9a3661ab7bb2700701";
    revisions = {
      r0 = {
        nix = import ../hackage/simple-money-0.1.0.1-r0-24ef5df4d21bb96e3e3c1ef1a5a937b3bdb7bd384134907cf9ad665be750e041.nix;
        revNum = 0;
        sha256 = "24ef5df4d21bb96e3e3c1ef1a5a937b3bdb7bd384134907cf9ad665be750e041";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "5492c431a549ba942a4ca30b447bfbdb6305ba6fcbf405d068d8eba1fe43ecb5";
    revisions = {
      r0 = {
        nix = import ../hackage/simple-money-0.2.0.0-r0-65ccd315578d3927d77733b4e48273416e9f1ae4f610425245409f434729920e.nix;
        revNum = 0;
        sha256 = "65ccd315578d3927d77733b4e48273416e9f1ae4f610425245409f434729920e";
      };
      default = "r0";
    };
  };
  "0.2.0.1" = {
    sha256 = "8ebb01c9704377dcc0a945218ff9038fcda3ecf36ecd7f26265e407ba6c5112e";
    revisions = {
      r0 = {
        nix = import ../hackage/simple-money-0.2.0.1-r0-26eb675e453dcf25cca2c84b44793506ff36bea61721f61552b0bbdf81c11e1b.nix;
        revNum = 0;
        sha256 = "26eb675e453dcf25cca2c84b44793506ff36bea61721f61552b0bbdf81c11e1b";
      };
      default = "r0";
    };
  };
}