{
  "1.0" = {
    sha256 = "4012310e5e80d4f4eb11ec73aeda311f7cb94a5c68e7393bfb3b99513cd61ab6";
    revisions = {
      r0 = {
        nix = import ../hackage/inj-1.0-r0-8a2ff7e51dd60ce718b96e08821e332d2fca282ae6115602abecf75a976aada3.nix;
        revNum = 0;
        sha256 = "8a2ff7e51dd60ce718b96e08821e332d2fca282ae6115602abecf75a976aada3";
      };
      default = "r0";
    };
  };
  "2.0" = {
    sha256 = "cda8144e53cef375eb604760a718b4589a07481c423d72a932dab30099c9c120";
    revisions = {
      r0 = {
        nix = import ../hackage/inj-2.0-r0-5d40dbc87978ac877087a9e2219be48ea2e17d59707ab3df29b3d98ae341e6a5.nix;
        revNum = 0;
        sha256 = "5d40dbc87978ac877087a9e2219be48ea2e17d59707ab3df29b3d98ae341e6a5";
      };
      default = "r0";
    };
  };
}