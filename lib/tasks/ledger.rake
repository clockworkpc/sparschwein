namespace :ledger do
  desc "Export transactions to hledger journal"
  task export: :environment do
    Rails.logger.info "Ledger export placeholder"
  end

  desc "Generate hledger reports"
  task reports: :environment do
    Rails.logger.info "Ledger reports placeholder"
  end
end
