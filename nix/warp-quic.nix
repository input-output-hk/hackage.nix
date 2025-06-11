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
      r2 = {
        nix = import ../hackage/warp-quic-0.0.0-r2-25ff9ac55da4142915c641a16987090a13dcd3b181955946604cf5111363722e.nix;
        revNum = 2;
        sha256 = "25ff9ac55da4142915c641a16987090a13dcd3b181955946604cf5111363722e";
      };
      default = "r2";
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
      r1 = {
        nix = import ../hackage/warp-quic-0.0.1-r1-bb130be47c208fefe9b476bc6b24d0d0de0ad1210dce09fecb8777dc05cee5b9.nix;
        revNum = 1;
        sha256 = "bb130be47c208fefe9b476bc6b24d0d0de0ad1210dce09fecb8777dc05cee5b9";
      };
      default = "r1";
    };
  };
  "0.0.2" = {
    sha256 = "39d02e5076636a9e5837bc5a5d1adb77ca9ceff0a93e7c36e431d0b3cbee69c1";
    revisions = {
      r0 = {
        nix = import ../hackage/warp-quic-0.0.2-r0-e7e7149355bdb46b974df93c38b6b07a389ed3b7abebf82e321fad976116e790.nix;
        revNum = 0;
        sha256 = "e7e7149355bdb46b974df93c38b6b07a389ed3b7abebf82e321fad976116e790";
      };
      r1 = {
        nix = import ../hackage/warp-quic-0.0.2-r1-8303f384937846d1e5f796b300ac18910b6393556c0d8413404a78be8b27df33.nix;
        revNum = 1;
        sha256 = "8303f384937846d1e5f796b300ac18910b6393556c0d8413404a78be8b27df33";
      };
      default = "r1";
    };
  };
  "0.0.3" = {
    sha256 = "2c650c122f3b00753eb3d16df5792b74031cb7680c99f233051dc942e75e6f6d";
    revisions = {
      r0 = {
        nix = import ../hackage/warp-quic-0.0.3-r0-9d0311292fd23229282507dedc47866dc5c18540d90c5f4d8f16821f5633465b.nix;
        revNum = 0;
        sha256 = "9d0311292fd23229282507dedc47866dc5c18540d90c5f4d8f16821f5633465b";
      };
      default = "r0";
    };
  };
}