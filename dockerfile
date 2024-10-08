# استخدم صورة Go الرسمية
FROM golang:1.19-alpine

# ضبط دليل العمل داخل الحاوية
WORKDIR /app

# نسخ ملف go.mod و go.sum لتثبيت التبعيات أولاً (يضمن هذا الاستفادة من التخزين المؤقت لبناء التبعيات)
COPY go.mod go.sum ./

# تنزيل التبعيات
RUN go mod download

# نسخ بقية ملفات المشروع إلى الحاوية
COPY . .

# بناء التطبيق
RUN go build -o main .


CMD ["./main"]
