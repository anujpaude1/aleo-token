
chmod 775 .env
source .env



# Verify that variables are correctly loaded
echo "PRIVATEKEY is: $PRIVATEKEY"


WALLETADDRESS="aleo14t5snttwkrcmfg5h6q9hdnnvmu79u0djyvcva3668gdkhhkdtq9sy6v5cc"
APPNAME="token_ibwk6gn"

# Deploy using snarkOS developer tool
snarkos developer deploy \
    --private-key "$PRIVATEKEY" \
    --query "https://vm.aleo.org/api" \
    --path "./build/" \
    --priority-fee 600000 \
    --broadcast "https://vm.aleo.org/api/testnet3/transaction/broadcast" \
    "token_ibwk6gn.aleo"