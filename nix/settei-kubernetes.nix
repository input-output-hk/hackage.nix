{
  "0.2.0.0" = {
    sha256 = "12ac166fdb7f91d1128aff456c67ed570a5719bbeac5da019a554bbd09a3cfaf";
    revisions = {
      r0 = {
        nix = import ../hackage/settei-kubernetes-0.2.0.0-r0-11dfefaabc3ee795e9127dc83501e2511376b71850bc9d0d47fb0424f90894e5.nix;
        revNum = 0;
        sha256 = "11dfefaabc3ee795e9127dc83501e2511376b71850bc9d0d47fb0424f90894e5";
      };
      default = "r0";
    };
  };
  "0.3.0.0" = {
    sha256 = "3afb88cf6a7dbd21046cbf0c0adf8a0144be15476fa16dfdfbd4d0c8d8273bbb";
    revisions = {
      r0 = {
        nix = import ../hackage/settei-kubernetes-0.3.0.0-r0-a99dbb04d1b319529daaae0a5858b56cba3372eba5b7a47d9373dcb9e813720b.nix;
        revNum = 0;
        sha256 = "a99dbb04d1b319529daaae0a5858b56cba3372eba5b7a47d9373dcb9e813720b";
      };
      default = "r0";
    };
  };
}