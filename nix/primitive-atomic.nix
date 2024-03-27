{
  "0.1.0.0" = {
    sha256 = "fb2f30db051b7dd6957a8325f26fb9004e59fadce1bdabd36fd9abe0c7eef962";
    revisions = {
      r0 = {
        nix = import ../hackage/primitive-atomic-0.1.0.0-r0-058f3cff6c6b0ad0638176b56c172a9100d345ce17214423edae877a0171e2b1.nix;
        revNum = 0;
        sha256 = "058f3cff6c6b0ad0638176b56c172a9100d345ce17214423edae877a0171e2b1";
        };
      r1 = {
        nix = import ../hackage/primitive-atomic-0.1.0.0-r1-95084c60d0423600e9797f41017e19de4e15d98b49485cce8b44d3d3bd362c2b.nix;
        revNum = 1;
        sha256 = "95084c60d0423600e9797f41017e19de4e15d98b49485cce8b44d3d3bd362c2b";
        };
      default = "r1";
      };
    };
  "0.1.0.1" = {
    sha256 = "ba90be7f361183be777dee896e492b445bcb0b38b89f124063e528c0737cf460";
    revisions = {
      r0 = {
        nix = import ../hackage/primitive-atomic-0.1.0.1-r0-c617dbac553ea2ce0b08882cb609d5915d9a523066d3f26856c740070a322aa1.nix;
        revNum = 0;
        sha256 = "c617dbac553ea2ce0b08882cb609d5915d9a523066d3f26856c740070a322aa1";
        };
      default = "r0";
      };
    };
  "0.1.0.2" = {
    sha256 = "73cd3c08cb3b15a1e4c1fcc2a179e81e570c7ee03e27da7f765f03ced5ac8797";
    revisions = {
      r0 = {
        nix = import ../hackage/primitive-atomic-0.1.0.2-r0-ea3fc0607518fa62420c13325b6a6cae077b2f65e575aa26366e5f565c672a70.nix;
        revNum = 0;
        sha256 = "ea3fc0607518fa62420c13325b6a6cae077b2f65e575aa26366e5f565c672a70";
        };
      default = "r0";
      };
    };
  }