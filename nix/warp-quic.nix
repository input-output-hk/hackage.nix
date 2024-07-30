{
  "0.0.0" = {
    sha256 = "579b52242d195b78b7ac596042ad55fbda05e3b07578c10b83be2874b5ce8907";
    revisions = {
      r0 = {
        nix = import ../hackage/warp-quic-0.0.0-r0-b994792222f1e1ff5edf320076bf0a7bf838d98956a18569eee993434fa8a826.nix;
        revNum = 0;
        sha256 = "b994792222f1e1ff5edf320076bf0a7bf838d98956a18569eee993434fa8a826";
      };
      r1 = {
        nix = import ../hackage/warp-quic-0.0.0-r1-ddebc3ae9e5b0524e3cd3938227da5e5c82a891db9f809a164c1d467b85a6c84.nix;
        revNum = 1;
        sha256 = "ddebc3ae9e5b0524e3cd3938227da5e5c82a891db9f809a164c1d467b85a6c84";
      };
      default = "r1";
    };
  };
  "0.0.1" = {
    sha256 = "462a8bb1ca4c4326d656414b3ddf54045404ad8183c0a29ac1cd76a2d80f091b";
    revisions = {
      r0 = {
        nix = import ../hackage/warp-quic-0.0.1-r0-47989920442fa29bff596f8f3ed88ad82f1f6a9eacecaa2a93de882b5faeb724.nix;
        revNum = 0;
        sha256 = "47989920442fa29bff596f8f3ed88ad82f1f6a9eacecaa2a93de882b5faeb724";
      };
      default = "r0";
    };
  };
}