module Appboy
  module Endpoints
    module ScheduleMessages
      def schedule_messages(**payload)
        schedule_messages_service.new(app_group_id, payload).perform
      end

      private

      def schedule_messages_service
        Appboy::REST::ScheduleMessages
      end
    end
  end
end
