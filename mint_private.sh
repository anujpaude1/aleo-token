
chmod 775 .env
source .env

# Verify that variables are correctly loaded
echo "PRIVATEKEY is: $PRIVATEKEY"
WALLETADDRESS="aleo14t5snttwkrcmfg5h6q9hdnnvmu79u0djyvcva3668gdkhhkdtq9sy6v5cc"
APPNAME="token_ibwk6gnn"
snarkos developer execute "${APPNAME}.aleo" "mint_private" "${WALLETADDRESS}" "100u64" --private-key "${PRIVATEKEY}" --query "https://api.explorer.aleo.org/v1" --broadcast "https://api.explorer.aleo.org/v1/testnet/transaction/broadcast" --priority-fee 1000000 --network 1