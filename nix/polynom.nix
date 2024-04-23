{
  "0.1.0.0" = {
    sha256 = "904326a098409341a6b710f2fe36b48918cc41b954b98034fb6b68e5eb92efb1";
    revisions = {
      r0 = {
        nix = import ../hackage/polynom-0.1.0.0-r0-eb730ed0c6fa2622f9cac8b66b61c651e6a8b9ab797228e790785a435e22812b.nix;
        revNum = 0;
        sha256 = "eb730ed0c6fa2622f9cac8b66b61c651e6a8b9ab797228e790785a435e22812b";
      };
      r1 = {
        nix = import ../hackage/polynom-0.1.0.0-r1-e36123666bb2de71621730dfaffb5b55c28a854e0d0c5def3289bf8cc8a5d959.nix;
        revNum = 1;
        sha256 = "e36123666bb2de71621730dfaffb5b55c28a854e0d0c5def3289bf8cc8a5d959";
      };
      default = "r1";
    };
  };
}