{
  "0.1.0.0" = {
    sha256 = "7cc9debc36a4ad7bd74a8b8a01abbc381ad35dc742b8ac1ce93f8abe7a0423b6";
    revisions = {
      r0 = {
        nix = import ../hackage/s2n-tls-0.1.0.0-r0-d9080a86e5a363908f548a60d8cd52818aaaeb6389233d57c63a0cf79413d118.nix;
        revNum = 0;
        sha256 = "d9080a86e5a363908f548a60d8cd52818aaaeb6389233d57c63a0cf79413d118";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "33f353cc1c6ecfabbee9632e9de55dd7c8347cce25b2e0f5ee0672ff99ef1e24";
    revisions = {
      r0 = {
        nix = import ../hackage/s2n-tls-0.1.1.0-r0-9df73ea97a4a7018ee16ee43fd66b61b3db4ba2551985007665c4ec2f70b4b6f.nix;
        revNum = 0;
        sha256 = "9df73ea97a4a7018ee16ee43fd66b61b3db4ba2551985007665c4ec2f70b4b6f";
      };
      default = "r0";
    };
  };
}