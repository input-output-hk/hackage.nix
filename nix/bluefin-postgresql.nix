{
  "0.1.0.0" = {
    sha256 = "54b48b33caf9ea770d6a93266370cb66fed1b0fe9e5484925ab21cb408f9e771";
    revisions = {
      r0 = {
        nix = import ../hackage/bluefin-postgresql-0.1.0.0-r0-c0c4b11ae6b81c9dacbe36ca6e957aab4b59d074f3d0a577af18c7f0bc704eb2.nix;
        revNum = 0;
        sha256 = "c0c4b11ae6b81c9dacbe36ca6e957aab4b59d074f3d0a577af18c7f0bc704eb2";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "8aab7ebc732664690d509bc5d95ec0c306cf77c65872677188a7f2d2f58425d6";
    revisions = {
      r0 = {
        nix = import ../hackage/bluefin-postgresql-0.2.0.0-r0-171d694f18101b69264d689f52ed8d585fa7cfdcb99ab5a0660de1e4e0a00e96.nix;
        revNum = 0;
        sha256 = "171d694f18101b69264d689f52ed8d585fa7cfdcb99ab5a0660de1e4e0a00e96";
      };
      default = "r0";
    };
  };
}