
chmod 775 .env
source .env



# Verify that variables are correctly loaded
echo "PRIVATEKEY is: $PRIVATEKEY"


WALLETADDRESS="aleo14t5snttwkrcmfg5h6q9hdnnvmu79u0djyvcva3668gdkhhkdtq9sy6v5cc"
APPNAME="token_ibwk6gnn"

snarkos developer deploy  --private-key "${PRIVATEKEY}" --query "https://api.explorer.aleo.org/v1" --path "./build/" --priority-fee 5  --broadcast "https://api.explorer.aleo.org/v1/testnet/transaction/broadcast" token_ibwk6gnn.aleo --network 1