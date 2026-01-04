{
  "1.0.0.1" = {
    sha256 = "3ab1910fba4098989c65979300b454612053810d0a28e5e1f6dc43b1429b5025";
    revisions = {
      r0 = {
        nix = import ../hackage/himari-1.0.0.1-r0-77ee2efca6f72d2af922e016923e89bbe90b81dfa3caef60988907f10340ebc0.nix;
        revNum = 0;
        sha256 = "77ee2efca6f72d2af922e016923e89bbe90b81dfa3caef60988907f10340ebc0";
      };
      default = "r0";
    };
  };
  "1.0.0.2" = {
    sha256 = "0ed8f59678fc674a9ed5121815360353aa202d508807d5c91380a327c02d4728";
    revisions = {
      r0 = {
        nix = import ../hackage/himari-1.0.0.2-r0-e80a94665ab6be417ca7fd77e8b199db63fffdd5227462653768520312c4f223.nix;
        revNum = 0;
        sha256 = "e80a94665ab6be417ca7fd77e8b199db63fffdd5227462653768520312c4f223";
      };
      default = "r0";
    };
  };
}