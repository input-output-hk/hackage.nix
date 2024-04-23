{
  "0.2.0" = {
    sha256 = "b996480adececee261ff633c0bc9d768d1153392810f63879f289a158ea51062";
    revisions = {
      r0 = {
        nix = import ../hackage/bool-extras-0.2.0-r0-2536cd93b1c3141821ab216e49281c42c9f28e1c50ae1224279e9942017e2845.nix;
        revNum = 0;
        sha256 = "2536cd93b1c3141821ab216e49281c42c9f28e1c50ae1224279e9942017e2845";
      };
      r1 = {
        nix = import ../hackage/bool-extras-0.2.0-r1-acf542306ac9ca11a36eefa13e093abab42c808804f3df3cf625d2ab2b6da890.nix;
        revNum = 1;
        sha256 = "acf542306ac9ca11a36eefa13e093abab42c808804f3df3cf625d2ab2b6da890";
      };
      default = "r1";
    };
  };
  "0.3.0" = {
    sha256 = "531b640072630890102f80fcc0c7538dbb758f7c0ff1370928d41afddb80459d";
    revisions = {
      r0 = {
        nix = import ../hackage/bool-extras-0.3.0-r0-f0ef572428717fd7cb5e64fc3eab87c80b5e41d2120174a6bc41d5059436b300.nix;
        revNum = 0;
        sha256 = "f0ef572428717fd7cb5e64fc3eab87c80b5e41d2120174a6bc41d5059436b300";
      };
      r1 = {
        nix = import ../hackage/bool-extras-0.3.0-r1-265f11c4ef186f92f96be7c491c602b5077a36eaec7c6300424d9f11493813bd.nix;
        revNum = 1;
        sha256 = "265f11c4ef186f92f96be7c491c602b5077a36eaec7c6300424d9f11493813bd";
      };
      default = "r1";
    };
  };
  "0.4.0" = {
    sha256 = "c1e8cfc6e716f089a7d24fe0cb33e2f4792ff97f81084604139d5902dc201501";
    revisions = {
      r0 = {
        nix = import ../hackage/bool-extras-0.4.0-r0-4d46de500f0a86e9c87f19b300485bf8721bf6eced801a43ca122137fa177273.nix;
        revNum = 0;
        sha256 = "4d46de500f0a86e9c87f19b300485bf8721bf6eced801a43ca122137fa177273";
      };
      default = "r0";
    };
  };
}