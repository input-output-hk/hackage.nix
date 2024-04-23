{
  "0.1.0.0" = {
    sha256 = "cf8bdb82959d249ced20dff22935bd2ea79b1869267a95ebcacc7f0452eda259";
    revisions = {
      r0 = {
        nix = import ../hackage/uuid-aeson-0.1.0.0-r0-e0034ca1c2cc242331f09127daa691d312966cd2e64c62f8a04faf8c98df845b.nix;
        revNum = 0;
        sha256 = "e0034ca1c2cc242331f09127daa691d312966cd2e64c62f8a04faf8c98df845b";
      };
      r1 = {
        nix = import ../hackage/uuid-aeson-0.1.0.0-r1-5fe65c563ef474292cf59cda8e36416dd75a60a05fc1fb8be43a0bd2eba1d814.nix;
        revNum = 1;
        sha256 = "5fe65c563ef474292cf59cda8e36416dd75a60a05fc1fb8be43a0bd2eba1d814";
      };
      default = "r1";
    };
  };
}