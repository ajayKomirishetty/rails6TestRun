class AuditController < ApplicationController
    def show
        params1 = params.permit(:id)
        @audit = Audited::Audit.find(params[:id])
    end
end