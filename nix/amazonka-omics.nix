{
  "2.0" = {
    sha256 = "56610bc8f8efab772ab2469099759f1c681d536b6a0bb7eb0f24e980deb7fdf8";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-omics-2.0-r0-bac9cd2ef56f2ddf0b493ddb6892e3fff7cbcdd81be5c8cbd419b4c8bcf670cb.nix;
        revNum = 0;
        sha256 = "bac9cd2ef56f2ddf0b493ddb6892e3fff7cbcdd81be5c8cbd419b4c8bcf670cb";
      };
      r1 = {
        nix = import ../hackage/amazonka-omics-2.0-r1-9e32ba9ecbce53a57c4515fb14e38eab9adfb0c80672ddec35858f3ea3ab11bd.nix;
        revNum = 1;
        sha256 = "9e32ba9ecbce53a57c4515fb14e38eab9adfb0c80672ddec35858f3ea3ab11bd";
      };
      default = "r1";
    };
  };
}