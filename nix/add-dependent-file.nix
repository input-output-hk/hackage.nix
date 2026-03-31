{
  "0.0.1" = {
    sha256 = "e8e5ef55d9b97129f23099bc236930e38dfa0965d8e0acdbdde6344ff3db4ee7";
    revisions = {
      r0 = {
        nix = import ../hackage/add-dependent-file-0.0.1-r0-33564dd911502757ab4081c35b4efed793f45dc51d46ef8825d55e34214641ea.nix;
        revNum = 0;
        sha256 = "33564dd911502757ab4081c35b4efed793f45dc51d46ef8825d55e34214641ea";
      };
      default = "r0";
    };
  };
  "0.0.2" = {
    sha256 = "7e46634122151bcb9022dd7c037458b6f2b4332dde227682300b237e80d320e6";
    revisions = {
      r0 = {
        nix = import ../hackage/add-dependent-file-0.0.2-r0-0e25fba87a782144b113b513649c3e27958e8f45d2417fbdd65918a260274e7f.nix;
        revNum = 0;
        sha256 = "0e25fba87a782144b113b513649c3e27958e8f45d2417fbdd65918a260274e7f";
      };
      default = "r0";
    };
  };
}