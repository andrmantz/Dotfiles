case ":$PATH:" in
    *:"/home/andreas/.ghcup/bin":*)
        ;;
    *)
        export PATH="/home/andreas/.ghcup/bin:$PATH"
        ;;
esac
case ":$PATH:" in
    *:"$HOME/.cabal/bin":*)
        ;;
    *)
        export PATH="$HOME/.cabal/bin:$PATH"
        ;;
esac
