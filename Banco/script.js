let balance = 1000.00;
        const transactions = [];

        function showSection(sectionId) {
            document.querySelectorAll('.content').forEach(section => {
                section.classList.add('hidden');
            });
            document.getElementById(sectionId).classList.remove('hidden');
        }

        document.getElementById('transferForm').addEventListener('submit', function(e) {
            e.preventDefault();
            const amount = parseFloat(document.getElementById('amount').value);
            const recipient = document.getElementById('recipient').value;
            
            if (amount > balance) {
                alert('Saldo insuficiente');
                return;
            }

            balance -= amount;
            document.getElementById('currentBalance').textContent = balance.toFixed(2);
            
            const transaction = {
                type: 'Transferencia',
                amount: amount,
                recipient: recipient,
                date: new Date().toLocaleString()
            };
            transactions.unshift(transaction);
            updateTransactionHistory();
            
            alert(`Transferencia de $${amount} a ${recipient} realizada con éxito.`);
            this.reset();
        });

        function updateTransactionHistory() {
            const list = document.getElementById('transactionList');
            list.innerHTML = '';
            transactions.forEach(transaction => {
                const li = document.createElement('li');
                li.textContent = `${transaction.type}: $${transaction.amount} a ${transaction.recipient} - ${transaction.date}`;
                list.appendChild(li);
            });
        }